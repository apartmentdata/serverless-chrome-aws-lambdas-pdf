import log from '../utils/log'
import pdf from '../chrome/pdf'

export default async function handler (event, context, callback) {

  var printOptions = ["url", "landscape", "displayHeaderFooter", "displayHeaderFooter", "printBackground",
                  "scale", "paperWidth","paperHeight","marginTop","marginBottom","marginLeft",
                  "marginRight","headerTemplate", "footerTemplate","X-User-Id", "X-User-Token", "X-User-SystemCode",
                  "X-User-Metro"];

  var printParameters = {};
  for (var key in event.headers) {
    if (event.headers.hasOwnProperty(key)) {
        log("key is " + key + ", value is" + event.headers[key]);
        if (printOptions.includes(key)) {
          if (["landscape", "ignoreInvalidPageRanges", "printBackground", "displayHeaderFooter"].includes(key)) {
            printParameters[key] = (event.headers[key]  === 'true');
          } else if (["scale", "paperWidth", "paperHeight", "marginTop", "marginBottom", "marginLeft", "marginRight"].includes(key)) {
            printParameters[key] = Number(event.headers[key]);
          } else {
            printParameters[key] = event.headers[key];
          }
        }
    }
  }

  console.log(`printParameters: ${JSON.stringify(printParameters)}`);

  let data
  log('Processing PDFification for', event.headers.url, printParameters)
  const startTime = Date.now()

  try {
    data = await pdf(event.headers.url, printParameters)
  } catch (error) {
    console.error('Error printing pdf for', event.headers.url, error)
    return callback(error)
  }
  log(`Chromium took ${Date.now() - startTime}ms to load URL and render PDF.`)

  // TODO: handle cases where the response is > 10MB
  // with saving to S3 or something since API Gateway has a body limit of 10MB
  return callback(null, {
    statusCode: 200,
    body: data,
    isBase64Encoded: true,
    headers: {
      'Content-Type': 'application/pdf',
    },
  })
}
