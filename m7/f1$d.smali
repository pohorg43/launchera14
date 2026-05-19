.class public final Lm7/f1$d;
.super Lr7/k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr7/k0<",
        "Lm7/f1$c;",
        ">;"
    }
.end annotation


# instance fields
.field public c:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lr7/k0;-><init>()V

    iput-wide p1, p0, Lm7/f1$d;->c:J

    return-void
.end method
