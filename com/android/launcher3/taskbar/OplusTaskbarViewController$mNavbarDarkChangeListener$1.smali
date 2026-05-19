.class public final Lcom/android/launcher3/taskbar/OplusTaskbarViewController$mNavbarDarkChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $taskbarView:Lcom/android/launcher3/taskbar/TaskbarView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$mNavbarDarkChangeListener$1;->$taskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$mNavbarDarkChangeListener$1;->$taskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateDividerBg(Z)V

    return-void
.end method
