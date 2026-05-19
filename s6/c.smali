.class public final Ls6/c;
.super Ls6/a;
.source ""

# interfaces
.implements Ls6/f;


# instance fields
.field public final c:Li5/a;

.field public final d:Lh6/f;


# direct methods
.method public constructor <init>(Li5/a;Ly6/l0;Lh6/f;Ls6/g;)V
    .registers 6

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Ls6/a;-><init>(Ly6/l0;Ls6/g;)V

    iput-object p1, p0, Ls6/c;->c:Li5/a;

    iput-object p3, p0, Ls6/c;->d:Lh6/f;

    return-void
.end method


# virtual methods
.method public a()Lh6/f;
    .registers 1

    iget-object p0, p0, Ls6/c;->d:Lh6/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Cxt { "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ls6/c;->c:Li5/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
