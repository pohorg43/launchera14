.class public final Li6/h$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li6/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li6/g$a<",
        "Li6/h$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li6/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/i$b<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Li6/y;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Li6/i$b;ILi6/y;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/i$b<",
            "*>;I",
            "Li6/y;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/h$e;->a:Li6/i$b;

    iput p2, p0, Li6/h$e;->b:I

    iput-object p3, p0, Li6/h$e;->c:Li6/y;

    iput-boolean p4, p0, Li6/h$e;->d:Z

    iput-boolean p5, p0, Li6/h$e;->e:Z

    return-void
.end method


# virtual methods
.method public c(Li6/p$a;Li6/p;)Li6/p$a;
    .registers 3

    check-cast p1, Li6/h$b;

    check-cast p2, Li6/h;

    invoke-virtual {p1, p2}, Li6/h$b;->e(Li6/h;)Li6/h$b;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Li6/h$e;

    iget p0, p0, Li6/h$e;->b:I

    iget p1, p1, Li6/h$e;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getLiteJavaType()Li6/z;
    .registers 1

    iget-object p0, p0, Li6/h$e;->c:Li6/y;

    iget-object p0, p0, Li6/y;->a:Li6/z;

    return-object p0
.end method

.method public getLiteType()Li6/y;
    .registers 1

    iget-object p0, p0, Li6/h$e;->c:Li6/y;

    return-object p0
.end method

.method public getNumber()I
    .registers 1

    iget p0, p0, Li6/h$e;->b:I

    return p0
.end method

.method public isPacked()Z
    .registers 1

    iget-boolean p0, p0, Li6/h$e;->e:Z

    return p0
.end method

.method public isRepeated()Z
    .registers 1

    iget-boolean p0, p0, Li6/h$e;->d:Z

    return p0
.end method
