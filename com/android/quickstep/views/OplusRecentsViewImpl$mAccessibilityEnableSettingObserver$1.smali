.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$getMContext$p$s1361138260(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_enabled"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_45

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, p1, :cond_45

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAccessibilityEnableSettingObserver$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_2e

    const v3, 0x7f0a0589

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_34
    if-nez v3, :cond_37

    goto :goto_3c

    :cond_37
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(I)V

    :goto_3c
    if-nez v2, :cond_3f

    goto :goto_42

    :cond_3f
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_45
    return-void
.end method
