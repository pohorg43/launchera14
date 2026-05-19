.class public final Lz5/l$r;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz5/s$a$a;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lz5/l$r;->a:Ljava/lang/String;

    iput-object p2, p0, Lz5/l$r;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    check-cast p1, Lz5/s$a$a;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz5/l$r;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Lz5/g;

    sget-object v3, Lz5/l;->b:Lz5/g;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Lz5/s$a$a;->a(Ljava/lang/String;[Lz5/g;)V

    iget-object v0, p0, Lz5/l$r;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Lz5/g;

    aput-object v3, v2, v4

    aput-object v3, v2, v1

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Lz5/s$a$a;->a(Ljava/lang/String;[Lz5/g;)V

    iget-object p0, p0, Lz5/l$r;->a:Ljava/lang/String;

    new-array v0, v1, [Lz5/g;

    aput-object v3, v0, v4

    invoke-virtual {p1, p0, v0}, Lz5/s$a$a;->b(Ljava/lang/String;[Lz5/g;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
