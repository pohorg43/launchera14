.class public final synthetic Lcom/oplus/quickstep/dynamictask/sys/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/a;->a:Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/a;->a:Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;->a(Lcom/oplus/quickstep/dynamictask/sys/PhoneStateDetector;I)V

    return-void
.end method
