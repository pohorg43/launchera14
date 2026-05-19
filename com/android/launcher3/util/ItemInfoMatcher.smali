.class public abstract Lcom/android/launcher3/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EMPTY_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/ItemInfoMatcher;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$forFolderMatch$4(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$ofShortcutKeys$3(Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$ofPackages$2(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$ofUser$0(Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroid/os/UserHandle;Ljava/util/HashSet;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$ofComponents$1(Landroid/os/UserHandle;Ljava/util/HashSet;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$ofItemIds$5(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/batchdrag/d;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/d;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$ofItems$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;
    .registers 1
    .param p0  # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_9

    :cond_7
    sget-object p0, Lcom/android/launcher3/util/ItemInfoMatcher;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    :goto_9
    return-object p0
.end method

.method private static synthetic lambda$forFolderMatch$4(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static synthetic lambda$ofComponents$1(Landroid/os/UserHandle;Ljava/util/HashSet;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    invoke-static {p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_19

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    move p1, v2

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    if-eqz p2, :cond_2e

    if-eqz p1, :cond_2d

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/OplusAppFilter;->shouldShowInLayout(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_2d

    move v0, v2

    :cond_2d
    move p1, v0

    :cond_2e
    return p1
.end method

.method private static synthetic lambda$ofItemIds$5(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    if-eqz p1, :cond_c

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic lambda$ofItems$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method private static synthetic lambda$ofPackages$2(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    invoke-static {p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move p1, v3

    goto :goto_1e

    :cond_1d
    move p1, v0

    :goto_1e
    if-eqz p2, :cond_34

    if-eqz p1, :cond_33

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p1

    iget p2, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p1, v1, p0, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowInLayout(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result p0

    if-nez p0, :cond_33

    move v0, v3

    :cond_33
    move p1, v0

    :cond_34
    return p1
.end method

.method private static synthetic lambda$ofShortcutKeys$3(Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_12

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static synthetic lambda$ofUser$0(Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/e;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/util/e;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;Z)V

    return-object v0
.end method

.method public static ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSet;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/badge/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/g;-><init>(Lcom/android/launcher3/util/IntSet;)V

    return-object v0
.end method

.method public static ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/d;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/util/d;-><init>(Lcom/android/launcher3/util/IntSet;I)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/ItemInfoMatcherExtPlugin;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lcom/android/launcher3/util/e;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/util/e;-><init>(Landroid/os/UserHandle;Ljava/util/Set;Z)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/badge/h;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/h;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/badge/m;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/m;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method
