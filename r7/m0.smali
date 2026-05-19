.class public final Lr7/m0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ll4/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;

.field public final c:[Lm7/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Ll4/f;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/m0;->a:Ll4/f;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lr7/m0;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lm7/l2;

    iput-object p1, p0, Lr7/m0;->c:[Lm7/l2;

    return-void
.end method
