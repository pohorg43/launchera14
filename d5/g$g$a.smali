.class public final Ld5/g$g$a;
.super Ld5/g$g;
.source ""

# interfaces
.implements Ld5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/g$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Ld5/g$g;-><init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;I)V

    iput-object p2, p0, Ld5/g$g$a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ld5/f$a;->a(Ld5/f;[Ljava/lang/Object;)V

    iget-object v0, p0, Ld5/g$g$a;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ld5/g$g;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
