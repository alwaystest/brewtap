cask 'gerrit-jarvis' do
  version '1.2.0'
  sha256 '169598c906fa208d7dc27155141ac3854bc31cdeb0a4bd67971754132445fc81'

  url "https://github.com/joeshang/GerritJarvis/releases/download/v#{version}/GerritJarvis-v#{version}.zip"
  name 'GerritJarvis'
  homepage 'https://github.com/joeshang/GerritJarvis'

  app 'GerritJarvis.app'
end
