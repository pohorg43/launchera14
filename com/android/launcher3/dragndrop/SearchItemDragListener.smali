.class public Lcom/android/launcher3/dragndrop/SearchItemDragListener;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchItemDragListener"


# instance fields
.field private mBmp:Landroid/graphics/Bitmap;

.field private mIntent:Landroid/content/Intent;

.field private mMimeType:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    const-string/jumbo p1, "search/*"

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mBmp:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public createDragHelper()Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;
    .registers 5

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;-><init>(Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public bridge synthetic createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->createDragHelper()Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;

    move-result-object p0

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic init(Lcom/android/launcher3/BaseActivity;Z)Z
    .registers 3

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/SearchItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/launcher3/Launcher;Z)Z
    .registers 5

    const-string v0, "init: "

    const-string v1, "SearchItemDragListener"

    invoke-static {v0, p2, v1}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public onDragStart(Landroid/view/DragEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
