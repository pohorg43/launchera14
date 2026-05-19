.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;
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

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;-><init>()V

    return-void
.end method

.method private final getSInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->access$getSInstance$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    return-object p0
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;->getSInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    move-result-object p0

    return-object p0
.end method

.method public final notifyFileManagerStateChange(Ljava/lang/String;I)V
    .registers 4

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->access$getListeners$cp()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;->onFileManagerVisibilityChange(Ljava/lang/String;I)V

    goto :goto_d

    :cond_1d
    return-void
.end method
