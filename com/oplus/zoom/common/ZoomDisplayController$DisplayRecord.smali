.class Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayRecord"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field public mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/oplus/zoom/common/ZoomDisplayController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;-><init>(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->setDisplayLayout(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method private setDisplayLayout(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-void
.end method


# virtual methods
.method public getDensity()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result p0

    return p0
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p0

    return p0
.end method

.method public getScreenHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    return p0
.end method

.method public getScreenWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p0

    return p0
.end method
