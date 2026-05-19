.class public final Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/LearningGesturesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayChanged()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "onOverlayChanged, configChangeInvoked="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {v1}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->access$getHasConfigurationChangeInvoked$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LearningGesturesActivity"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->access$getHasConfigurationChangeInvoked$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->access$getMAdapter$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    move-result-object p0

    if-nez p0, :cond_35

    const-string p0, "mAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_38
    return-void
.end method
