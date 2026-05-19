.class public Ls6/j;
.super Ls6/a;
.source ""


# direct methods
.method public constructor <init>(Ly6/l0;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ls6/a;-><init>(Ly6/l0;Ls6/g;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "{Transient} : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls6/a;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
