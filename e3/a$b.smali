.class public final Le3/a$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.pantanal.server.content.sdk.StaticSdk$getPlatformVerison$1"
    f = "StaticSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Le3/a$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p0, Le3/a$b;

    invoke-direct {p0, p2}, Le3/a$b;-><init>(Ll4/d;)V

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p0, Le3/a$b;

    invoke-direct {p0, p2}, Le3/a$b;-><init>(Ll4/d;)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Le3/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string p0, "StaticSdk"

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_7
    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    move-object v0, v1

    goto :goto_1d

    :cond_12
    sget-object v2, Le3/a;->d:Landroid/net/Uri;

    const-string v3, "UPK_ENGINE_VERSION_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_2d

    invoke-virtual {p1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Le3/a;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_6f

    :cond_2d
    if-nez v0, :cond_30

    goto :goto_74

    :cond_30
    :try_start_30
    sget-object p1, Le3/a;->d:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_68

    if-nez p1, :cond_3a

    move-object v2, v1

    goto :goto_5c

    :cond_3a
    :try_start_3a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "result"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sput v2, Le3/a;->f:I

    const-string v3, "get platform version:"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_61

    :try_start_59
    invoke-static {p1, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_68

    :goto_5c
    :try_start_5c
    invoke-static {v0, v1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6f

    move-object v1, v2

    goto :goto_74

    :catchall_61
    move-exception v1

    :try_start_62
    throw v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v2

    :try_start_64
    invoke-static {p1, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    :try_start_69
    throw p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v1

    :try_start_6b
    invoke-static {v0, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_74
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPlatformVersion error,"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
