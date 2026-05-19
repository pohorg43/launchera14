.class public final Lcom/android/launcher3/taskbar/OplusTaskbarViewController$subscribeIconRunningTaskChangedListener$1;
.super Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onShouldCloseOverlayWindow()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManager()V

    return-void
.end method
