.class public final Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMIsRecentLeftofHome$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z

    move-result v0

    if-eq v0, p1, :cond_64

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$setMIsRecentLeftofHome$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    const-string/jumbo v1, "mNavButtonContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMIsRecentLeftofHome$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->replacePosition(Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMRecentAnimationHolder$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_34

    goto :goto_36

    :cond_34
    iput-boolean v0, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    :goto_36
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMBackAnimationHolder$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    move-result-object p1

    if-nez p1, :cond_3f

    goto :goto_41

    :cond_3f
    iput-boolean v0, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    :goto_41
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMHomeAnimationHolder$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    move-result-object p1

    if-nez p1, :cond_4a

    goto :goto_4c

    :cond_4a
    iput-boolean v0, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    :cond_4c
    :goto_4c
    const-string p1, "--->mIsRecentLeftofHome:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;->this$0:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->access$getMIsRecentLeftofHome$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavbarButtonsViewController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void
.end method
