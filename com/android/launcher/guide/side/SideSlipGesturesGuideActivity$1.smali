.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mLastState:I

.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->mLastState:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->mLastState:I

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->mLastState:I

    :cond_11
    if-eqz p1, :cond_29

    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    goto :goto_29

    :cond_17
    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->mLastState:I

    if-eqz v1, :cond_33

    if-eq v1, v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusViewPager;->setBackgroundColor(I)V

    goto :goto_33

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusViewPager;->setBackgroundColor(I)V

    :cond_33
    :goto_33
    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->mLastState:I

    return-void
.end method
