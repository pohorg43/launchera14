.class public final La6/f$a$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/f$a$b;->b(Lh6/b;)La6/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/t$a;

.field public final synthetic b:La6/t$a;

.field public final synthetic c:La6/f$a$b;

.field public final synthetic d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La6/t$a;La6/f$a$b;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/t$a;",
            "La6/f$a$b;",
            "Ljava/util/ArrayList<",
            "Lj5/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, La6/f$a$b$a;->b:La6/t$a;

    iput-object p2, p0, La6/f$a$b$a;->c:La6/f$a$b;

    iput-object p3, p0, La6/f$a$b$a;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/f$a$b$a;->a:La6/t$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, La6/f$a$b$a;->b:La6/t$a;

    invoke-interface {v0}, La6/t$a;->a()V

    iget-object v0, p0, La6/f$a$b$a;->c:La6/f$a$b;

    iget-object v0, v0, La6/f$a$b;->a:Ljava/util/ArrayList;

    new-instance v1, Lm6/a;

    iget-object p0, p0, La6/f$a$b$a;->d:Ljava/util/ArrayList;

    invoke-static {p0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj5/c;

    invoke-direct {v1, p0}, Lm6/a;-><init>(Lj5/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lh6/f;Lm6/f;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La6/f$a$b$a;->a:La6/t$a;

    invoke-interface {p0, p1, p2}, La6/t$a;->b(Lh6/f;Lm6/f;)V

    return-void
.end method

.method public c(Lh6/f;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, La6/f$a$b$a;->a:La6/t$a;

    invoke-interface {p0, p1, p2}, La6/t$a;->c(Lh6/f;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lh6/f;)La6/t$b;
    .registers 2

    iget-object p0, p0, La6/f$a$b$a;->a:La6/t$a;

    invoke-interface {p0, p1}, La6/t$a;->d(Lh6/f;)La6/t$b;

    move-result-object p0

    return-object p0
.end method

.method public e(Lh6/f;Lh6/b;Lh6/f;)V
    .registers 5

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La6/f$a$b$a;->a:La6/t$a;

    invoke-interface {p0, p1, p2, p3}, La6/t$a;->e(Lh6/f;Lh6/b;Lh6/f;)V

    return-void
.end method

.method public f(Lh6/f;Lh6/b;)La6/t$a;
    .registers 4

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La6/f$a$b$a;->a:La6/t$a;

    invoke-interface {p0, p1, p2}, La6/t$a;->f(Lh6/f;Lh6/b;)La6/t$a;

    move-result-object p0

    return-object p0
.end method
