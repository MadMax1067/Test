git clone git@github.com:MadMax1067/Test.git clone
cd clone
$old_tag = git describe
if ($old_tag.Length -gt 5)
{
    $new_version=[int][string]$a[4]+1
    git tag -a 1.0.$new_version -m "new tag"
    git push origin --tag
}
else
{
echo "no changes"
}

cd ..
rm -rf clone