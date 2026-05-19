.class public final Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener$4;->this$0:Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_26

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity lifecycle event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnlockTitlePreferenceCategory"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3b

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener$4;->this$0:Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;->access$getToolTips$p(Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;)Lcom/coui/appcompat/tooltips/COUIToolTips;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_35
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener$4;->this$0:Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;->access$setToolTips$p(Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    :cond_3b
    return-void
.end method
