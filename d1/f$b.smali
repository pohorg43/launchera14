.class public Ld1/f$b;
.super Ld1/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld1/f$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ld1/f$b$a;

    invoke-direct {v0}, Ld1/f$b$a;-><init>()V

    invoke-direct {p0, v0}, Ld1/f$a;-><init>(Ld1/f$d;)V

    return-void
.end method
