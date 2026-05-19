.class public final Lz5/l$g;
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


# direct methods
.method public constructor <init>(La6/a0;)V
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lz5/s$a$a;

    const-string p0, "$this$function"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Spliterator"

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lz5/g;

    const/4 v0, 0x0

    sget-object v1, Lz5/l;->b:Lz5/g;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v0, "java/util/Spliterator"

    invoke-virtual {p1, v0, p0}, Lz5/s$a$a;->b(Ljava/lang/String;[Lz5/g;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
