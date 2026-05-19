.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/taskbar/TaskBarFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromXml(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/taskbar/TaskBarFolder;
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcherContext"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0247

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.folder.taskbar.TaskBarFolder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-static {p2}, Lcom/android/launcher3/folder/LauncherDelegate;->from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->access$setMLauncherDelegate$p$s-855938500(Lcom/android/launcher3/folder/taskbar/TaskBarFolder;Lcom/android/launcher3/folder/LauncherDelegate;)V

    return-object p0
.end method
