# Upload background image [SMW0]
    - Run transaction SMW0 -> Binary data -> Execute
    - Go to Settings -> Define MIME Types and add (image/jpeg with extension .jpeg)
    - Create and fill IMAGE name -> Import image from computer and save object.

# Update System Table [SM30]
    - Run transaction SM30
    - Enter table *SSM_CUST* and click "Maintain"
    - Add entries
        - START_IMAGE = IMAGE
        - RESIZE_IMAGE = IMAGE