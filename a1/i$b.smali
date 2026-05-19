.class public final La1/i$b;
.super La1/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La1/c<",
        "La1/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La1/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/l;
    .registers 2

    new-instance v0, La1/i$a;

    invoke-direct {v0, p0}, La1/i$a;-><init>(La1/i$b;)V

    return-object v0
.end method

.method public d(ILjava/lang/Class;)La1/i$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "La1/i$a;"
        }
    .end annotation

    invoke-virtual {p0}, La1/c;->b()La1/l;

    move-result-object p0

    check-cast p0, La1/i$a;

    iput p1, p0, La1/i$a;->b:I

    iput-object p2, p0, La1/i$a;->c:Ljava/lang/Class;

    return-object p0
.end method
