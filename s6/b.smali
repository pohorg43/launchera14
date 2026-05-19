.class public final Ls6/b;
.super Ls6/a;
.source ""

# interfaces
.implements Ls6/f;


# instance fields
.field public final c:Li5/e;

.field public final d:Lh6/f;


# direct methods
.method public constructor <init>(Li5/e;Ly6/l0;Lh6/f;Ls6/g;)V
    .registers 5

    const-string p4, "classDescriptor"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "receiverType"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    invoke-direct {p0, p2, p4}, Ls6/a;-><init>(Ly6/l0;Ls6/g;)V

    iput-object p1, p0, Ls6/b;->c:Li5/e;

    iput-object p3, p0, Ls6/b;->d:Lh6/f;

    return-void
.end method


# virtual methods
.method public a()Lh6/f;
    .registers 1

    iget-object p0, p0, Ls6/b;->d:Lh6/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ls6/a;->getType()Ly6/l0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Ctx { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ls6/b;->c:Li5/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
