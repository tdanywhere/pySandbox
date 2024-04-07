import requests
from requests.auth import HTTPBasicAuth

# Replace these variables with your Jira information
# https://jira-hoyer.apps.teamworkx.cloud/rest/api/2/search?jql=project%20=%20%22HOYER%20Vista%22%20AND%20type%20not%20in%20(Task,%20%22Regression%20Test%22)%20and%20cf[10910]%20not%20in%20(%22eB%22,%20%22DBA%22)%20AND%20status%20not%20in%20(New,%20Approved,%20%22In%20Analysis%22)%20AND%20(created%20%3E=%20startOfYear()%20or%20resolutiondate%20%3E=%20startOfYear())%20&expand=changelog&startAt=1&maxResults=1
jira_url = 'https://jira-hoyer.apps.teamworkx.cloud'
api_endpoint = '/rest/api/2/issue/HV-14441'
username = 'thomas.deter@hoyer-group.com'                    # Use your email address for Atlassian Cloud
#api_token = 'ODA4MDI3NDU3MDgwOtkuP+EeWVUaegXyideUqFdQhnWS'  # Generate an API token in your Atlassian account settings
api_token = 'w99OUJycf2G6npI48rut5AFl4R2k04mmPtd'           # Generate an API token in your Atlassian account settings


# Combine the URL and endpoint
url = jira_url + api_endpoint
print(url)

response = requests.get(url, auth=HTTPBasicAuth(username, api_token))
#response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    print('Convert the response to JSON and print it')
    print(response.status_code)
    print(response._content)

    #issue = response.json()
    #print(issue)
else:
    # 401-Autorisierung erforderlich
    print(f"Failed to get issue: {response.status_code}",response)

#print(issue['fields']['summary'])
#print(issue)