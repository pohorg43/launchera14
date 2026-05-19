.class public final Lio/branch/search/r1$g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le8/x;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V
    .registers 4

    iput-object p3, p0, Lio/branch/search/r1$g;->a:Le8/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r1$g;->a:Le8/x;

    iget-object p0, p0, Le8/x;->d:Le8/y;

    if-eqz p0, :cond_b

    invoke-static {p0}, Lio/branch/search/o;->b(Le8/y;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/r1$g;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
