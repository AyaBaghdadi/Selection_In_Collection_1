# Selection_In_Collection_1
# Aya_Baghdadi

Selection Item in collection view “ Way 1 “


Hello …

1. Create Collection view and add collection view cell with your design but
[ Add a UIView carry your cell as an IBOutlet ]

2. Connect your custom cell 

3. Add Delegate for your collection view & assign your data in cell (First show your first result )

4. After it add method didSelectItemAt & var lastIndexActive:IndexPath = [1 ,0]
it’s an index with initial fake index

5. Add Check 
  if self.lastIndexActive != indexPath {  
   // Do Your action // For not repeat 
   }

6. Inside your selection add this lines of code changes color of your view which carry your cell and change a color of title after it return a last selection to his normal color

// Thanks
