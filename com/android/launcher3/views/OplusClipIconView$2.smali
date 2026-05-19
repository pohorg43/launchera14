.class Lcom/android/launcher3/views/OplusClipIconView$2;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusClipIconView;

.field public final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusClipIconView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    iput-object p2, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 7

    const/4 p1, 0x0

    new-array v0, p1, [F

    iget-object v1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->getClipIconRadius()[F

    move-result-object v0

    goto :goto_1a

    :cond_10
    instance-of v2, v1, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getClipIconRadius()[F

    move-result-object v0

    :cond_1a
    :goto_1a
    if-nez v0, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {p1}, Lcom/android/launcher3/views/OplusClipIconView;->access$000(Lcom/android/launcher3/views/OplusClipIconView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {v0}, Lcom/android/launcher3/views/OplusClipIconView;->access$100(Lcom/android/launcher3/views/OplusClipIconView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {v0}, Lcom/android/launcher3/views/OplusClipIconView;->access$200(Lcom/android/launcher3/views/OplusClipIconView;)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_7e

    :cond_44
    iget-object v1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {v1}, Lcom/android/launcher3/views/OplusClipIconView;->access$300(Lcom/android/launcher3/views/OplusClipIconView;)[F

    move-result-object v1

    array-length v1, v1

    array-length v2, v0

    if-eq v1, v2, :cond_56

    iget-object v1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    array-length v2, v0

    new-array v2, v2, [F

    invoke-static {v1, v2}, Lcom/android/launcher3/views/OplusClipIconView;->access$302(Lcom/android/launcher3/views/OplusClipIconView;[F)[F

    :cond_56
    :goto_56
    array-length v1, v0

    if-ge p1, v1, :cond_6d

    iget-object v1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {v1}, Lcom/android/launcher3/views/OplusClipIconView;->access$300(Lcom/android/launcher3/views/OplusClipIconView;)[F

    move-result-object v1

    aget v2, v0, p1

    iget-object v3, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {v3}, Lcom/android/launcher3/views/OplusClipIconView;->access$200(Lcom/android/launcher3/views/OplusClipIconView;)F

    move-result v3

    mul-float/2addr v3, v2

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_56

    :cond_6d
    iget-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-static {p1}, Lcom/android/launcher3/views/OplusClipIconView;->access$300(Lcom/android/launcher3/views/OplusClipIconView;)[F

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardClipPath([FLandroid/graphics/Rect;)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    :goto_7e
    return-void
.end method
