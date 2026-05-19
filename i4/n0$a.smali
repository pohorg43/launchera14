.class public final Li4/n0$a;
.super Li4/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/n0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,207:1\n205#2:208\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:208\n*E\n"
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public final synthetic e:Li4/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li4/n0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li4/n0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li4/n0<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Li4/n0$a;->e:Li4/n0;

    invoke-direct {p0}, Li4/b;-><init>()V

    invoke-virtual {p1}, Li4/a;->size()I

    move-result v0

    iput v0, p0, Li4/n0$a;->c:I

    iget p1, p1, Li4/n0;->c:I

    iput p1, p0, Li4/n0$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget v0, p0, Li4/n0$a;->c:I

    if-nez v0, :cond_9

    sget-object v0, Li4/s0;->c:Li4/s0;

    iput-object v0, p0, Li4/b;->a:Li4/s0;

    goto :goto_25

    :cond_9
    iget-object v0, p0, Li4/n0$a;->e:Li4/n0;

    iget-object v0, v0, Li4/n0;->a:[Ljava/lang/Object;

    iget v1, p0, Li4/n0$a;->d:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Li4/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Li4/n0$a;->e:Li4/n0;

    iget v1, p0, Li4/n0$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Li4/n0;->b:I

    rem-int/2addr v1, v0

    iput v1, p0, Li4/n0$a;->d:I

    iget v0, p0, Li4/n0$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li4/n0$a;->c:I

    :goto_25
    return-void
.end method
