.class public final Lio/branch/search/c5$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Le8/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/c5$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/c5$b;

    invoke-direct {v0}, Lio/branch/search/c5$b;-><init>()V

    sput-object v0, Lio/branch/search/c5$b;->a:Lio/branch/search/c5$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Le8/u;
    .registers 2

    new-instance p0, Le8/u$b;

    invoke-direct {p0}, Le8/u$b;-><init>()V

    new-instance v0, Le8/u;

    invoke-direct {v0, p0}, Le8/u;-><init>(Le8/u$b;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/c5$b;->a()Le8/u;

    move-result-object p0

    return-object p0
.end method
