.class public final Lcom/oplus/quickstep/common/AbstractObserver$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/common/AbstractObserver;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toSystemUri$lambda$0(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Landroid/net/Uri;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toGlobalUri$lambda$2(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Landroid/net/Uri;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toSecureUri$lambda$1(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static final toGlobalUri$lambda$2(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static final toSecureUri$lambda$1(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static final toSystemUri$lambda$0(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toGlobalUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/launcher3/allapps/f;->d:Lcom/android/launcher3/allapps/f;

    return-object p0
.end method

.method public final toSecureUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/launcher3/settings/d;->c:Lcom/android/launcher3/settings/d;

    return-object p0
.end method

.method public final toSystemUri()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/launcher3/testing/e;->c:Lcom/android/launcher3/testing/e;

    return-object p0
.end method

.method public final varargs unregister(Landroid/content/Context;[Lcom/oplus/quickstep/common/AbstractObserver;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "observers"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p0, :cond_18

    aget-object v1, p2, v0

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->unregister(Landroid/content/Context;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method
