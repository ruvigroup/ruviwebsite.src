json_str = {{ range $.Site.Data.members.member }}{{ .cid }},{{ end }}

url = 'https://chalmers-research-publications-prod.azurewebsites.net/api/PublicationsConnectedToPerson?cid={' + json_str.substring(0,json_str.len()-2) + '}';
console.log(url);
