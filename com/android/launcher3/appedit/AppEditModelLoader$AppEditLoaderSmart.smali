.class public final Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/appedit/AppEditModelLoader$ModelLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppEditModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppEditLoaderSmart"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppEditModelLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEditModelLoader.kt\ncom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n1855#2,2:277\n*S KotlinDebug\n*F\n+ 1 AppEditModelLoader.kt\ncom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart\n*L\n63#1:277,2\n*E\n"
    }
.end annotation


# instance fields
.field private init:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppEditLoaderSmart"

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->init:Z

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final initData(Landroid/content/Context;)V
    .registers 4

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->tag:Ljava/lang/String;

    const/16 v1, 0xfa

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbQueryListLimit(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/appedit/AppEditInfo;

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->putCacheInfo(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;)V

    goto :goto_15

    :cond_2b
    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->dCacheLog()V

    return-void
.end method

.method public mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;
    .registers 5

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->init:Z

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager;->getCacheInfo()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_2d

    const-string v0, "AppEdit"

    const-string v1, "LoaderSmart init"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->initData(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->init:Z

    :cond_2d
    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->loadEntry(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    return-object p0
.end method

.method public final setInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->init:Z

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->tag:Ljava/lang/String;

    return-void
.end method
