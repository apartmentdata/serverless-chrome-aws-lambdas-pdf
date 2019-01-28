curl -X POST \
  https://mjyddfd24b.execute-api.us-east-1.amazonaws.com/dev/pdf \
  -H 'displayHeaderFooter: true' \
  -H 'headerTemplate: <style> table, tr, td { padding: 0; margin: 0; } table { font-family: "Open Sans", Helvetica, sans-serif; color: #eee; font-weight: bold; font-size: 10px; width: 100vw; height: 25px; border-collapse: collapse; margin: 0 .56in; } svg { width: 100px; } .text-left { text-align: left; } .text-right { text-align: right; } </style> <table> <tr> <td class="text-left">Market Overview</td> <td class="text-right">Houston - January 28, 2019</td> </tr> </table>' \
  -H 'footerTemplate: <table> <tr> <td class="text-left"> <img src="data:image/png;base64,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" width="100" alt=""> </td> <td class="text-center"> <small>&copy; 1986 - 2019 &bull;  ApartmentData.com</small> </td> <td class="text-right"><span class="pageNumber"></span> of <span class="totalPages"></span></td> </tr> </table>' \
  -H 'landscape: true' \
  -H 'marginBottom: 0.2' \
  -H 'marginLeft: 0.2' \
  -H 'marginRight: 0.2' \
  -H 'marginTop: 0.2' \
  -H 'paperHeight: 11' \
  -H 'paperWidth: 8' \
  -H 'printBackground: true' \
  -H 'scale: 1' \
  -d '<p>some text</p>' > tmp.pdf
  # -H 'X-User-Id: 55507' \
  # -H 'X-User-Token: df3fbd52-3975-4bf8-a55d-1135ed114590' \
  # -H 'X-User-SystemCode: W4240241236' \
  # -H 'X-User-Metro: tx-ho' \
  # -H 'url: https://www.apartmentdata.io/dashboard/tx-ho' > tmp.pdf

  # -d '<style> table, tr, td { padding: 0; margin: 0; } table { font-family: "Open Sans", Helvetica, sans-serif; color: #eee; font-weight: bold; font-size: 10px; width: 100vw; height: 25px; border-collapse: collapse; margin: 0 .56in; }</style>' > tmp.pdf
  
# curl -X POST \
#   https://mjyddfd24b.execute-api.us-east-1.amazonaws.com/dev/pdf \
#   -H 'displayHeaderFooter: true' \
#   -H 'footerTemplate: <div class="page-footer" style="width:100%; text-align:right; font-size:12px;">Page <span class="pageNumber"></span> of <span class="totalPages"></span></div>' \
#   -H 'headerTemplate: <div class="page-footer" style="width:100%; text-align:right; font-size:12px;">Page <span class="pageNumber"></span> of <span class="totalPages"></span></div>' \
#   -H 'landscape: true' \
#   -H 'marginBottom: 0.2' \
#   -H 'marginLeft: 0.2' \
#   -H 'marginRight: 0.2' \
#   -H 'marginTop: 0.2' \
#   -H 'paperHeight: 11' \
#   -H 'paperWidth: 8' \
#   -H 'printBackground: true' \
#   -H 'scale: 1' \
#   -H 'X-User-Id: 55507' \
#   -H 'X-User-Token: 5ec19d54-8513-4083-9335-27ca50f974da' \
#   -H 'X-User-SystemCode: W4240241236' \
#   -H 'X-User-Metro: tx-ho' \
#   -H 'url: http://www.apartmentdata.io/dashboard/tx-ho/change-report' > tmp.pdf

 
