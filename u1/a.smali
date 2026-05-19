.class public final Lu1/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/a$c;,
        Lu1/a$d;,
        Lu1/a$e;,
        Lu1/a$b;
    }
.end annotation


# static fields
.field public static final a:Lu1/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu1/a$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu1/a$a;

    invoke-direct {v0}, Lu1/a$a;-><init>()V

    sput-object v0, Lu1/a;->a:Lu1/a$e;

    return-void
.end method

.method public static a(ILu1/a$b;)Landroidx/core/util/Pools$Pool;
    .registers 4
    .param p1  # Lu1/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lu1/a$d;",
            ">(I",
            "Lu1/a$b<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sget-object p0, Lu1/a;->a:Lu1/a$e;

    new-instance v1, Lu1/a$c;

    invoke-direct {v1, v0, p1, p0}, Lu1/a$c;-><init>(Landroidx/core/util/Pools$Pool;Lu1/a$b;Lu1/a$e;)V

    return-object v1
.end method
