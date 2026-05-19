.class public final Lio/branch/search/w$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/branch/search/KBranchRemoteConfiguration;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "remoteConfigJson"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/w$a$a;->a:Lio/branch/search/w$a$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, La8/o;->a(La8/a;Lkotlin/jvm/functions/Function1;I)La8/a;

    move-result-object p0

    iget-object v0, p0, La8/a;->a:Lb8/c;

    iget-object v0, v0, Lb8/c;->k:Lc8/b;

    const-class v2, Lio/branch/search/KBranchRemoteConfiguration;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lz4/r;

    move-result-object v2

    invoke-static {v0, v2}, Le2/a;->e(Lc8/b;Lz4/r;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const-string v2, "deserializer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "string"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lb8/h;

    invoke-direct {v2, p1}, Lb8/h;-><init>(Ljava/lang/String;)V

    new-instance p1, Lb8/n;

    sget-object v3, Lb8/q;->e:Lb8/q;

    invoke-direct {p1, p0, v3, v2}, Lb8/n;-><init>(La8/a;Lb8/q;Lb8/h;)V

    invoke-virtual {p1, v0}, Lb8/n;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    iget-byte p1, v2, Lb8/h;->b:B

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-eqz v1, :cond_42

    check-cast p0, Lio/branch/search/KBranchRemoteConfiguration;

    return-object p0

    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Reader has not consumed the whole input: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V
    .registers 3

    sget-object p0, Lio/branch/search/b5$a;->b:Lio/branch/search/b5$a;

    invoke-static {p1, p0}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lio/branch/search/KBranchRemoteConfiguration;->a(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_historical_overrides"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Landroid/content/Context;Lio/branch/search/m;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "branchSearch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/b5$a;->b:Lio/branch/search/b5$a;

    invoke-static {p1, v0}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "BranchSharedPrefs.get(co…refs.Files.remote_config)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_historical_overrides"

    const-string v1, "{}"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "sp.getString(KEY_HISTORICAL_OVERRIDES, \"{}\")!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lio/branch/search/w$a;->a(Ljava/lang/String;Lio/branch/search/m;)V

    return-void
.end method

.method public final a(Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;)V
    .registers 4

    if-eqz p2, :cond_19

    if-eqz p3, :cond_19

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->w()I

    move-result p0

    invoke-virtual {p2}, Lio/branch/search/KBranchRemoteConfiguration;->w()I

    move-result p2

    if-eq p0, p2, :cond_19

    iget-object p0, p3, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    iget-object p0, p0, Lio/branch/search/k2;->e:Lio/branch/search/m2;

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->w()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/m2;->a(I)V

    :cond_19
    return-void
.end method

.method public final a(Ljava/lang/String;Lio/branch/search/m;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "remoteConfigDelta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "branchSearch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p0, p1}, Lio/branch/search/w$a;->a(Ljava/lang/String;)Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    iget-object v1, p2, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    iget-object v2, p2, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {p0, v0, v1, v2}, Lio/branch/search/w$a;->a(Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p2, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p2}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "branchSearch.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    const-string v1, "branchSearch.remoteConfiguration"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/branch/search/w$a;->a(Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    goto :goto_42

    :catch_2b
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid remote configuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteConfigInterface.Companion"

    invoke-static {p2, p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    return-void
.end method
