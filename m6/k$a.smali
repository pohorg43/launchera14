.class public final Lm6/k$a;
.super Lm6/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lm6/k;-><init>()V

    iput-object p1, p0, Lm6/k$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 4

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, La7/i;->o0:La7/i;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lm6/k$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lm6/k$a;->b:Ljava/lang/String;

    return-object p0
.end method
