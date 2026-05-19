.class public final Lio/branch/search/a5$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/a5;-><init>(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/a5;


# direct methods
.method public constructor <init>(Lio/branch/search/a5;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/a5$b;->a:Lio/branch/search/a5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lio/branch/search/a5$b;->a:Lio/branch/search/a5;

    invoke-static {v0}, Lio/branch/search/a5;->a(Lio/branch/search/a5;)Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/a5$b;->a:Lio/branch/search/a5;

    invoke-static {p0}, Lio/branch/search/a5;->b(Lio/branch/search/a5;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ls4/f;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_19
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/a5$b;->a()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
