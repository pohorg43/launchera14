.class public final Lio/branch/search/o0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o0;-><init>(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/o0;


# direct methods
.method public constructor <init>(Lio/branch/search/o0;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/o0$a;->a:Lio/branch/search/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    :try_start_0
    iget-object p0, p0, Lio/branch/search/o0$a;->a:Lio/branch/search/o0;

    invoke-virtual {p0}, Lio/branch/search/o0;->d()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    const-wide/16 v0, -0x1

    :goto_d
    return-wide v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lio/branch/search/o0$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
