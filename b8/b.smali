.class public final Lb8/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[C
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lb8/b;

    invoke-direct {v0}, Lb8/b;-><init>()V

    const/16 v1, 0x75

    new-array v2, v1, [C

    sput-object v2, Lb8/b;->a:[C

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_16

    invoke-virtual {v0, v2, v1}, Lb8/b;->a(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    const/16 v1, 0x8

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Lb8/b;->a(IC)V

    const/16 v1, 0x9

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Lb8/b;->a(IC)V

    const/16 v1, 0xa

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lb8/b;->a(IC)V

    const/16 v1, 0xc

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lb8/b;->a(IC)V

    const/16 v1, 0xd

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Lb8/b;->a(IC)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v1}, Lb8/b;->a(IC)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v1}, Lb8/b;->a(IC)V

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v1}, Lb8/b;->a(IC)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IC)V
    .registers 3

    const/16 p0, 0x75

    if-eq p2, p0, :cond_9

    sget-object p0, Lb8/b;->a:[C

    int-to-char p1, p1

    aput-char p1, p0, p2

    :cond_9
    return-void
.end method
