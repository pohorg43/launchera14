.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/filemanager/FileManagerState$OnFileManagerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileManagerStateObserver"
.end annotation


# instance fields
.field private final settingsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "settingsKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;->settingsKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSettingsKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;->settingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public onFileManagerState(I)V
    .registers 4

    const-string v0, "FileManager Window open or close complete : "

    const-string v1, "FileManagerStateListenHelper"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerStateObserver;->settingsKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;->notifyFileManagerStateChange(Ljava/lang/String;I)V

    return-void
.end method
