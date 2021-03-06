function setproxy --description "设置代理 支持 http https git命令代理"
  brew services restart polipo

  set -Ux http_proxy http://127.0.0.1:1081
  set -Ux https_proxy http://127.0.0.1:1081

  # git
  git config http.proxy 'socks5://127.0.0.1:1080'
  git config https.proxy 'socks5://127.0.0.1:1080'

  # npm
  npm config set proxy http://127.0.0.1:1081
  npm config set https-proxy http://127.0.0.1:1081
end
