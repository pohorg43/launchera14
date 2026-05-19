.class public Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source ""


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mIconSize:I

.field public mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/16 p1, 0x65

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method
