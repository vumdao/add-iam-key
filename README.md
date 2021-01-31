<p align="center">
  <a href="https://dev.to/vumdao">
    <img alt="Lazy Add IAM Access Key" src="https://dev-to-uploads.s3.amazonaws.com/i/t0hnh8mof24frb9e38gw.jpg" width="500" />
  </a>
</p>
<h1 align="center">
  <div><b>Lazy Add IAM Access Key</b></div>
</h1>

Use `expect` programming language to add you IAM access key by one enter

## What’s In This Document 
- [Write the code](#-Write-the-code)
- [Run example](#-Run-example)

### 🚀 **[Write the code](#-Write-the-code)**
[add_key.sh](https://github.com/vumdao/add-iam-key/add_key.sh)

```
#!/usr/bin/expect

set access_key [lindex $argv 0]
set screte_key [lindex $argv 1]

spawn aws configure

# Add access key
expect "]:"
send "$access_key\r"

# Add secrete key
expect "]:"
send "$screte_key\r"

# Default region
expect "]:"
send "\r"

# Default output format
expect "]:"
send "\r"

interact
```

### 🚀 **[Run example](#-Run-example)**
```
⚡ $ ./add_key.sh a1234a b4567b
spawn aws configure
AWS Access Key ID [****************XXXX]: a1234a
AWS Secret Access Key [****************YYYY]: b4567b
Default region name [ap-northeast-2]: 
Default output format [None]: 

⚡ $ aws configure list
      Name                    Value             Type    Location
      ----                    -----             ----    --------
   profile                <not set>             None    None
access_key     ****************234a shared-credentials-file    
secret_key     ****************567b shared-credentials-file    
    region           ap-northeast-2      config-file    ~/.aws/config
```