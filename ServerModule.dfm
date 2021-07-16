object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    '.scrollbox {'
    '   overflow-x:hidden !important;'
    '    scrollbar-width: thin !important;'
    '}'
    ''
    ':root{'
    '   scrollbar-width: thin !important;'
    '}'
    ''
    ''
    'scrollbar {'
    '/*  clear useragent default style*/'
    '   -moz-appearance: none !important;'
    '}'
    '/* buttons at two ends */'
    'scrollbarbutton {'
    '   -moz-appearance: none !important;'
    '}'
    '/* the sliding part*/'
    'thumb{'
    '   -moz-appearance: none !important;'
    '}'
    'scrollcorner {'
    '   -moz-appearance: none !important;'
    '   resize:both;'
    '}'
    '/* vertical or horizontal */'
    'scrollbar[orient="vertical"] {'
    '    color:silver;'
    '}')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 257
  Width = 392
end
