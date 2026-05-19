.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/filemanager/FileManagerState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getMContext$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    const-string v1, "fileBagVisibilityChanged"

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$setMFileManagerState$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;Ljava/lang/Integer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " fileManagerState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getMFileManagerState$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileManagerState"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getMFileManagerState$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_3f

    goto :goto_45

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_5d

    :goto_45
    iget-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getFileManagerStateListener$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$fileManagerStateObserver$1;->this$0:Lcom/android/launcher3/taskbar/filemanager/FileManagerState;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState;->access$getMFileManagerState$p(Lcom/android/launcher3/taskbar/filemanager/FileManagerState;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;->onFileManagerState(I)V

    :cond_5d
    return-void
.end method
