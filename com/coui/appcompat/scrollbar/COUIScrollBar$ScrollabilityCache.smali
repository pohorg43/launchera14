.class Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final h:[F

.field public static final i:[F


# instance fields
.field public final a:I

.field public final b:I

.field public c:[F

.field public d:Landroid/view/View;

.field public final e:Landroid/graphics/Interpolator;

.field public f:J

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x437f0000  # 255.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->h:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->i:[F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->e:Landroid/graphics/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->a:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->b:I

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_24

    long-to-int v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->e:Landroid/graphics/Interpolator;

    const/4 v3, 0x1

    sget-object v4, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->h:[F

    invoke-virtual {v2, v1, v0, v4}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    iget v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->b:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->i:[F

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_24
    return-void
.end method
