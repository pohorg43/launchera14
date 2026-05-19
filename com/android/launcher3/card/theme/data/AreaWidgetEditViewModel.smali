.class public final Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$Companion;
    }
.end annotation


# static fields
.field public static final ADD_ERROR_1:I = -0x1

.field public static final ADD_ERROR_2:I = -0x2

.field public static final ADD_ERROR_3:I = -0x3

.field public static final ADD_ERROR_4:I = -0x4

.field public static final ADD_ERROR_5:I = -0x5

.field public static final ADD_SUCCESS:I = 0x0

.field public static final Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$Companion;

.field private static final EMPTY_BUNDLE:Landroid/os/Bundle;

.field private static final INIT_REQUEST:Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_REQUEST:Ljava/lang/String; = "NO_REQUEST"

.field private static final TAG:Ljava/lang/String; = "AreaWidgetEditViewModel"


# instance fields
.field private final _addRequestFlow:Lp7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/m<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private launcherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$Companion;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->EMPTY_BUNDLE:Landroid/os/Bundle;

    new-instance v1, Lh4/j;

    const-string v2, "NO_REQUEST"

    invoke-direct {v1, v2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->INIT_REQUEST:Lh4/j;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 8

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->launcherRef:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->INIT_REQUEST:Lh4/j;

    invoke-static {p1}, Lp7/t;->a(Ljava/lang/Object;)Lp7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->_addRequestFlow:Lp7/m;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_40

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    :try_start_2f
    new-instance v3, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Ll4/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_40
    :goto_40
    return-void
.end method

.method public static final synthetic access$getINIT_REQUEST$cp()Lh4/j;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->INIT_REQUEST:Lh4/j;

    return-object v0
.end method

.method public static final synthetic access$getLauncherRef$p(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->launcherRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$get_addRequestFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;)Lp7/m;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->_addRequestFlow:Lp7/m;

    return-object p0
.end method


# virtual methods
.method public final addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V
    .registers 13

    const-string v0, "launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "forThemeInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v2

    :goto_28
    const/4 v3, -0x1

    const-string v4, "AreaWidgetEditViewModel"

    if-eqz p2, :cond_a8

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    if-nez p1, :cond_3c

    goto :goto_69

    :cond_3c
    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_62

    const-string v5, "editable"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_63

    :cond_62
    move-object p2, v2

    :goto_63
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    :goto_69
    if-nez p1, :cond_6c

    goto :goto_85

    :cond_6c
    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_82

    const-string/jumbo v5, "title"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_83

    :cond_82
    move-object p2, v2

    :goto_83
    iput-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_85
    const-string p2, "addCardResultToThemeStore isEditable = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_94

    iget-boolean v5, p1, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_95

    :cond_94
    move-object v5, v2

    :goto_95
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", title = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a2

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_a3

    :cond_a2
    move-object v5, v2

    :goto_a3
    invoke-static {p2, v5, v4}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_a6
    const/4 p2, 0x0

    goto :goto_b8

    :cond_a8
    const p2, 0x7f12011a

    invoke-static {p3, p2}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v3

    :goto_b8
    iget-object v5, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "requestId"

    if-eqz v5, :cond_e0

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_de

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_e9

    :cond_de
    move-object p0, v2

    goto :goto_e9

    :cond_e0
    const-string p0, "addCardResultToThemeStore no this cardType"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_e9
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "result"

    invoke-virtual {p4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "itemInfoId"

    if-eqz p1, :cond_fe

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p4, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_101

    :cond_fe
    invoke-virtual {p4, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_101
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10b

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object p1

    goto :goto_10c

    :cond_10b
    move-object p1, v2

    :goto_10c
    if-nez p1, :cond_110

    const-string p1, ""

    :cond_110
    const-string p2, "cardName"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "reason"

    invoke-virtual {p4, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p0, :cond_124

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p4, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_124
    :try_start_124
    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "partner_theme"

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12f} :catch_166

    const-string/jumbo p2, "onCardAddingResult"

    if-eqz p1, :cond_14a

    :try_start_134
    const-string p3, "addCardResultToThemeStore authority: partner_theme"

    invoke-static {v4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3
    :try_end_13d
    .catchall {:try_start_134 .. :try_end_13d} :catchall_143

    :try_start_13d
    invoke-static {p1, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_166

    if-nez p3, :cond_16c

    goto :goto_14a

    :catchall_143
    move-exception p0

    :try_start_144
    throw p0
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_145

    :catchall_145
    move-exception p2

    :try_start_146
    invoke-static {p1, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :cond_14a
    :goto_14a
    const-string/jumbo p1, "partner_theme.basic"

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_151} :catch_166

    if-eqz p0, :cond_16c

    :try_start_153
    const-string p1, "addCardResultToThemeStore authority: partner_theme.basic"

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_15b
    .catchall {:try_start_153 .. :try_end_15b} :catchall_15f

    :try_start_15b
    invoke-static {p0, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_166

    goto :goto_16c

    :catchall_15f
    move-exception p1

    :try_start_160
    throw p1
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_161

    :catchall_161
    move-exception p2

    :try_start_162
    invoke-static {p0, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_166} :catch_166

    :catch_166
    move-exception p0

    const-string p1, "addCardResultToThemeStore:"

    invoke-static {p1, p0, v4}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_16c
    :goto_16c
    return-void
.end method

.method public final getThemeCardMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final synthetic parcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "T"

    const/16 v1, 0x21

    if-lt p0, v1, :cond_1f

    const/4 p0, 0x4

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_27

    :cond_1f
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    :goto_27
    return-object p0
.end method

.method public final removeCardResultToThemeStore(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V
    .registers 9

    const-string v0, "AreaWidgetEditViewModel"

    const-string v1, "itemInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "launcher"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_16

    :cond_15
    move-object v1, v2

    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v2

    :goto_1e
    if-nez v1, :cond_21

    return-void

    :cond_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v5, "itemInfoId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "cardName"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_39

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_3a

    :cond_39
    move-object p1, v2

    :goto_3a
    if-eqz p1, :cond_4a

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :cond_4a
    :try_start_4a
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "partner_theme"

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_55} :catch_8e

    const-string/jumbo p2, "onCardDeleted"

    if-eqz p1, :cond_71

    :try_start_5a
    const-string/jumbo v1, "removeCardResultToThemeStore authority: partner_theme"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_6a

    :try_start_64
    invoke-static {p1, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_8e

    if-nez v1, :cond_94

    goto :goto_71

    :catchall_6a
    move-exception p0

    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p2

    :try_start_6d
    invoke-static {p1, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :cond_71
    :goto_71
    const-string/jumbo p1, "partner_theme.basic"

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_8e

    if-eqz p0, :cond_94

    :try_start_7a
    const-string/jumbo p1, "removeCardResultToThemeStore authority: partner_theme.basic"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_87

    :try_start_83
    invoke-static {p0, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_8e

    goto :goto_94

    :catchall_87
    move-exception p1

    :try_start_88
    throw p1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p2

    :try_start_8a
    invoke-static {p0, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8e} :catch_8e

    :catch_8e
    move-exception p0

    const-string p1, "addCardResultToThemeStore:"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_94
    :goto_94
    return-void
.end method

.method public final requestAdd(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->_addRequestFlow:Lp7/m;

    new-instance v0, Lh4/j;

    invoke-direct {v0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lp7/m;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveThemCardInfo(ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveThemCardInfo: cardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AreaWidgetEditViewModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setThemeCardMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->themeCardMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final tryAddCardByThemeStore(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher/Launcher;->tryAddCardByStore(I)V

    return-void
.end method
