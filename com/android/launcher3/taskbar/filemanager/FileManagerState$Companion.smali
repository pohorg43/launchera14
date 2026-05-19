.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/filemanager/FileManagerState;
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

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/filemanager/FileManagerState;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    move-result-object p0

    if-nez p0, :cond_14

    new-instance p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$setSInstance$cp(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)V

    :cond_14
    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
