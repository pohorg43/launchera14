.class final Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;Ljava/lang/Float;Ljava/lang/Float;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "OplusTaskbarViewController"

    const-string v0, "Reset translationY of taskbar while align anim start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method
