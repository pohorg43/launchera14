.class public final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBubbleVolatileRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleVolatileRepository.kt\ncom/android/wm/shell/bubbles/storage/BubbleVolatileRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,175:1\n817#2:176\n845#2,2:177\n764#2:179\n855#2,2:180\n1475#2:182\n1500#2,3:183\n1503#2,3:193\n1547#2:197\n1618#2,3:198\n1475#2:202\n1500#2,3:203\n1503#2,3:213\n1547#2:217\n1618#2,3:218\n357#3,7:186\n357#3,7:206\n211#4:196\n212#4:201\n211#4:216\n212#4:221\n*S KotlinDebug\n*F\n+ 1 BubbleVolatileRepository.kt\ncom/android/wm/shell/bubbles/storage/BubbleVolatileRepository\n*L\n85#1:176\n85#1:177,2\n100#1:179\n100#1:180,2\n162#1:182\n162#1:183,3\n162#1:193,3\n163#1:197\n163#1:198,3\n169#1:202\n169#1:203,3\n169#1:213,3\n170#1:217\n170#1:218,3\n162#1:186,7\n169#1:206,7\n162#1:196\n162#1:201\n169#1:216\n169#1:221\n*E\n"
    }
.end annotation


# instance fields
.field private capacity:I

.field private entitiesByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final launcherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;)V
    .registers 3

    const-string v0, "launcherApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    const/16 p1, 0x10

    iput p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->capacity:I

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->removeBubblesForUserWithParent$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final addBubbles$lambda$2$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles$lambda$2$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->sanitizeBubbles$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final cache(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    new-instance v3, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_31

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/ShortcutKey;->getPkg()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_80
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/ShortcutKey;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/pm/LauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V

    goto :goto_3f

    :cond_8d
    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->removeBubbles$lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic getCapacity$annotations()V
    .registers 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static final removeBubbles$lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized removeBubblesForUserWithParent(II)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;-><init>(I)V

    new-instance p1, Lcom/android/exceptionmonitor/util/c;

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    monitor-exit p0

    return p1

    :cond_22
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final removeBubblesForUserWithParent$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final sanitizeBubbles$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final uncache(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    new-instance v3, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_31

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/ShortcutKey;->getPkg()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_80
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/ShortcutKey;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/pm/LauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V

    goto :goto_3f

    :cond_8d
    return-void
.end method


# virtual methods
.method public final declared-synchronized addBubbles(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "bubbles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_6d

    if-eqz v0, :cond_e

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->getEntities(I)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->capacity:I

    invoke-static {p2, v1}, Li4/v;->e0(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    new-instance v5, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;

    invoke-direct {v5, v4}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;-><init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V

    new-instance v4, Lcom/android/launcher/folder/download/model/b;

    const/4 v6, 0x7

    invoke-direct {v4, v5, v6}, Lcom/android/launcher/folder/download/model/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->capacity:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_60

    invoke-static {v0, v2}, Li4/v;->d0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V

    invoke-static {v0, v2}, Li4/v;->A(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :cond_60
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->cache(Ljava/util/List;)V
    :try_end_6b
    .catchall {:try_start_e .. :try_end_6b} :catchall_6d

    monitor-exit p0

    return-void

    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getBubbles()Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_2d

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string/jumbo v5, "v"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2f

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2d
    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCapacity()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->capacity:I

    return p0
.end method

.method public final declared-synchronized getEntities(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1b

    :cond_16
    const-string p1, "entities"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeBubbles(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "bubbles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->getEntities(I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;

    invoke-direct {v4, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;-><init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V

    new-instance v2, Lcom/android/launcher/folder/download/model/c;

    const/16 v5, 0x9

    invoke-direct {v2, v4, v5}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v3, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_36
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeBubblesForUser(II)Z
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->removeBubblesForUserWithParent(II)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1e

    monitor-exit p0

    return p1

    :cond_a
    :try_start_a
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1e

    if-eqz p2, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    monitor-exit p0

    return p1

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sanitizeBubbles(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "activeUsers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_4d

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_4f

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4a

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/android/launcher/folder/download/b;

    const/16 v2, 0x9

    invoke-direct {p1, v1, v2}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_4f

    monitor-exit p0

    return p1

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_4d
    monitor-exit p0

    return v1

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setCapacity(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->capacity:I

    return-void
.end method
