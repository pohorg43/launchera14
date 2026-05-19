.class public final synthetic Lcom/android/wm/shell/pip/phone/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:[Landroid/graphics/Rect;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:Landroid/content/pm/ActivityInfo;

.field public final synthetic d:Landroid/app/PictureInPictureParams;

.field public final synthetic e:I

.field public final synthetic f:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/r;->a:[Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/r;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/r;->c:Landroid/content/pm/ActivityInfo;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/r;->d:Landroid/app/PictureInPictureParams;

    iput p5, p0, Lcom/android/wm/shell/pip/phone/r;->e:I

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/r;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/r;->a:[Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/r;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/r;->c:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/r;->d:Landroid/app/PictureInPictureParams;

    iget v4, p0, Lcom/android/wm/shell/pip/phone/r;->e:I

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/r;->f:Landroid/graphics/Rect;

    move-object v6, p1

    check-cast v6, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->d([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method
