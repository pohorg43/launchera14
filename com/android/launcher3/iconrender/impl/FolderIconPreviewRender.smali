.class public final Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;
.super Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/iconrender/AbstractIconRenderer<",
        "Lcom/android/launcher3/iconrender/IconRenderParams;",
        ">;",
        "Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender$Companion;

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "FolderIconPreviewRender"


# instance fields
.field private canvasSavePoint:I

.field private folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

.field private mAlpha:I

.field private mIsFolderAnim:Z

.field private oldBounds:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->Companion:Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->canvasSavePoint:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->oldBounds:Landroid/graphics/Rect;

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class p1, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->registerExport(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private final resetPreviewAlpha(Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_GRADIENT_DRAWABLE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    int-to-float p0, p0

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p0, v0

    invoke-static {p1, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    goto :goto_38

    :cond_16
    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/16 v0, 0xff

    if-nez p1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    :goto_20
    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    instance-of p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p1, :cond_38

    const-string/jumbo p1, "null cannot be cast to non-null type com.oplus.icons.OplusFastBitmapDrawable"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z
    .registers 4

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p2, :cond_1a

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_1a

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mIsFolderAnim:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public bridge synthetic acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .registers 4

    check-cast p3, Lcom/android/launcher3/iconrender/IconRenderParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z

    move-result p0

    return p0
.end method

.method public renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "renderManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_GRADIENT_DRAWABLE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    if-eqz p2, :cond_53

    invoke-virtual {p2, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/android/common/util/RenderNodeHelper;->INSTANCE:Lcom/android/common/util/RenderNodeHelper;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/common/util/RenderNodeHelper;->beginRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez v3, :cond_28

    goto :goto_2d

    :cond_28
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    :goto_2d
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v3}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez v4, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_3d
    iget-object v3, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v3, :cond_44

    invoke-virtual {v3, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_44
    invoke-virtual {p2, v0}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/common/util/RenderNodeHelper;->endRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)V

    goto :goto_53

    :cond_4c
    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p2, :cond_53

    invoke-virtual {p2, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_53
    :goto_53
    iget p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->canvasSavePoint:I

    if-lez p0, :cond_5a

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5a
    return-void
.end method

.method public renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "renderManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    if-eqz p2, :cond_23

    invoke-virtual {p2, v2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    :cond_23
    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez p2, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_2b
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->canvasSavePoint:I

    sget-object p1, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_GRADIENT_DRAWABLE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result p1

    const/16 v0, 0xff

    if-eqz p1, :cond_5f

    if-nez v1, :cond_3f

    goto :goto_42

    :cond_3f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_42
    instance-of p1, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p1, :cond_49

    check-cast v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_4a

    :cond_49
    move-object v1, p2

    :goto_4a
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_50
    if-nez p2, :cond_53

    goto :goto_56

    :cond_53
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_56
    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez p0, :cond_5b

    goto :goto_8a

    :cond_5b
    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    goto :goto_8a

    :cond_5f
    if-nez v1, :cond_62

    goto :goto_69

    :cond_62
    iget p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    rsub-int p1, p1, 0xff

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_69
    instance-of p1, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p1, :cond_70

    check-cast v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_71

    :cond_70
    move-object v1, p2

    :goto_71
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_77
    if-nez p2, :cond_7a

    goto :goto_80

    :cond_7a
    iget p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_80
    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez p1, :cond_85

    goto :goto_8a

    :cond_85
    iget p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public setPreviewDrawable(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/drawable/Drawable;Z)V
    .registers 5

    const-string v0, "bubbleTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mIsFolderAnim:Z

    iget-object p3, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p3}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p3

    if-eqz p3, :cond_17

    invoke-virtual {p3, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    :cond_17
    const/4 p3, 0x0

    if-nez p2, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->resetPreviewAlpha(Lcom/android/launcher3/BubbleTextView;)V

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez p1, :cond_22

    goto :goto_27

    :cond_22
    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->oldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_27
    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    goto :goto_49

    :cond_2a
    instance-of p1, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p1, :cond_49

    check-cast p2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    :cond_3c
    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->oldBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez p0, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public updatePreviewAlpha(Lcom/android/launcher3/BubbleTextView;I)V
    .registers 5

    const-string v0, "bubbleTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    sget-object p2, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_GRADIENT_DRAWABLE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    const/4 p2, 0x1

    int-to-float p2, p2

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    int-to-float p0, p0

    const/16 v0, 0xff

    int-to-float v0, v0

    div-float/2addr p0, v0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setIconAlpha(F)V

    goto :goto_4e

    :cond_2a
    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez p1, :cond_2f

    goto :goto_34

    :cond_2f
    iget p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    :goto_34
    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    instance-of p2, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p2, :cond_4e

    const-string/jumbo p2, "null cannot be cast to non-null type com.oplus.icons.OplusFastBitmapDrawable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_49

    goto :goto_4e

    :cond_49
    iget p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->mAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4e
    :goto_4e
    return-void
.end method
