.class public final Lr6/i$b;
.super Lr6/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lr6/i$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr6/i$b;

    invoke-direct {v0}, Lr6/i$b;-><init>()V

    sput-object v0, Lr6/i$b;->b:Lr6/i$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lr6/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public g()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method
