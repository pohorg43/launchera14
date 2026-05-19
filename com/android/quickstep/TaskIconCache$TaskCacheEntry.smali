.class public Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskCacheEntry"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public emmbeddedTaskIds:[I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public modifiedType:I

.field public splitIcon:Landroid/graphics/drawable/Drawable;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    return-void
.end method
